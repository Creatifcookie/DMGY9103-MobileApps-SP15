//
//  QuizViewController.m
//  Quiz
//
//  Created by Lauren on 2/3/15.
//  Copyright (c) 2015 Lauren Towles. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionlabel;
@property (nonatomic, weak) IBOutlet UILabel *answerlabel;

@end

@implementation QuizViewController


-(instancetype)initWithNibName:(NSString *)nibNameOrNil
                        bundle: (NSBundle *)nibBundleOrNil
{
    //Call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        //Create two arrays filled with questions and answers
        //and make the pointers point to them
        
        self.questions = @[@"From what is cognac made?",
                           @"What is 7+7?",
                           @"What is the capital of Vermont?"];
        
        
        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier"];
    }
    
    //Return the address of the new object return self;
    return self;
}



- (IBAction)showQuestion:(id)sender
{

    //Step to the next question
    self.currentQuestionIndex++;
    
    //Am I past the last questions?
    if (self.currentQuestionIndex ==[self.questions count]) {
       
        //Go back to the first question
        self.currentQuestionIndex = 0;
    }
    
    //Get the string at that index in the questions array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    //Display the string in the question label
    self.questionlabel.text = question;
    
    //Reset the answer label
    self.answerlabel.text = @"???";
}




- (IBAction)showAnswer: (id)sender
{
    //What is the answer to th current question?
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    //Display it in the answer label
    self.answerlabel.text = answer;

}

@end
