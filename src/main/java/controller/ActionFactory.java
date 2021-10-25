package controller;

import controller.action.Action;
import controller.action.AppleJoinFormAction;
import controller.action.AppleLoginFormAction;
import controller.action.ApplePageAction;
import controller.action.AppleReviewPageAction;
import controller.action.AppleReviewWriteAction;
import controller.action.CompareAction1;
import controller.action.CompareAction2;
import controller.action.ComparePageAction;
import controller.action.DetailReviewAction;
import controller.action.IdCheckAction;
import controller.action.IndexAction;
import controller.action.JoinAction;
import controller.action.LoginAction;
import controller.action.LogoutAction;
import controller.action.NicknameCheckAction;
import controller.action.ReviewSubmitAction;
import controller.action.SamsungJoinFormAction;
import controller.action.SamsungLoginFormAction;
import controller.action.SamsungPageAction;
import controller.action.SamsungReviewPageAction;
import controller.action.SamsungReviewWriteAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	public static ActionFactory getInstance() {
		return instance;
	}
	public Action getAction(String command) {
		Action action = null;
		if (command == null || command.equals("index")) {
			action = new IndexAction();
		} else if (command.equals("samsung_review")) {
			action = new SamsungPageAction();
		} else if (command.equals("samsung_loginform")) {
			action = new SamsungLoginFormAction();
		} else if (command.equals("samsung_joinform")) {
			action = new SamsungJoinFormAction();
		} else if (command.equals("apple_review")) {
			action = new ApplePageAction();
		} else if (command.equals("apple_loginform")) {
			action = new AppleLoginFormAction();
		} else if (command.equals("apple_joinform")) {
			action = new AppleJoinFormAction();
		} else if (command.equals("join")) {
			action = new JoinAction();
		} else if (command.equals("login")) {
			action = new LoginAction();
		} else if (command.equals("logout")) {
			action = new LogoutAction();
		} else if (command.equals("idCheck")) {
			action = new IdCheckAction();
		} else if (command.equals("nicknameCheck")) {
			action = new NicknameCheckAction();
		} else if (command.equals("samsungreviewpage")) {
			action = new SamsungReviewPageAction();
		} else if (command.equals("applereviewpage")) {
			action = new AppleReviewPageAction();
		} else if (command.equals("applereviewwrite")) {
			action = new AppleReviewWriteAction();
		} else if (command.equals("samsungreviewwrite")) {
			action = new SamsungReviewWriteAction();
		} else if (command.equals("reviewsubmit")) {
			action = new ReviewSubmitAction();
		} else if (command.equals("detailreview")) {
			action = new DetailReviewAction();
		} else if (command.equals("comparePage")) {
			action = new ComparePageAction();
		} else if (command.equals("trycompare1")) {
			action = new CompareAction1();
		} else if (command.equals("trycompare2")) {
			action = new CompareAction2();
		}
		return action;
	}
}
