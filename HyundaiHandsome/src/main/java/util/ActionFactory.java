package util;

import ir.DisclosureListAction;
import ir.IrArchiveListAction;
import media.collection.AdminCollectionDeleteAction;
import media.collection.AdminCollectionListAction;
import media.collection.CollectionDetAjaxAction;
import media.collection.CollectionListAction;
import media.collection.CollectionUploadAction;
import media.news.AdminNewsDeleteAction;
import media.news.AdminNewsListAction;
import media.news.NewsDetAction;
import media.news.NewsListAction;
import media.news.NewsUploadAction;
import test.ChartAction;

/*
작성자  : 고석준
클래스 설명 : 모든 호출을 CommandPattern으로 처리하기 위한 클래스 
*/
public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	private ActionFactory() {}//싱글턴 패턴 사용 
	public static ActionFactory getInstance() {
		return instance;
	}
	//호출한 URI에 따라 if문으로 Action instance를 가져와 실행한다.
	public Action getAction(String command) {
		Action action = null;
		//ir
		if("/ko/ir/disclosureInfoList.do".equals(command)) {
			action = new DisclosureListAction();
		}else if("/ko/ir/irArchiveList.do".equals(command)) {
			action = IrArchiveListAction.getInstance();
		}
		
		//media - collection
		else if("/ko/media/collectionDetAjax.do".equals(command)) {
			action = CollectionDetAjaxAction.getInstance();
		}else if("/ko/media/collectionList.do".equals(command)) {
			action = CollectionListAction.getInstance();
		}else if("/ko/media/collectionUpload.do".equals(command)) {
			action = CollectionUploadAction.getInstacne();
		}else if("/ko/media/adminCollectionList.do".equals(command)) {
			action = AdminCollectionListAction.getInstance();
		}else if("/ko/media/adminCollectionDelete.do".equals(command)) {
			action = AdminCollectionDeleteAction.getInstance();
		}
		//media - news
		else if("/ko/media/newsDet.do".equals(command)) {
			action = NewsDetAction.getInstacne();
		}else if("/ko/media/newsList.do".equals(command)) {
			action = NewsListAction.getInstance();
		}else if("/ko/media/newsUpload.do".equals(command)) {
			action = NewsUploadAction.getInstance();
		}else if("/ko/media/adminNewsList.do".equals(command)) {
			action = AdminNewsListAction.getInstance();
		}else if("/ko/media/newsDelete.do".equals(command)) {
			action = AdminNewsDeleteAction.getInstance();
		}
		//chart
		else if("/ko/chart.do".equals(command)) {
			action = ChartAction.getInstance();
		}
		
		return action;
	}
}
