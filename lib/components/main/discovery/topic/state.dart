import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';
import 'package:talk/models/list_topic_model.dart';

class TopicState {
  late RxList<ListTopicModel> newsList;
  late Rx<EasyRefreshController> easyController;

  TopicState() {
    easyController = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    ).obs;

    newsList = [
      const ListTopicModel(
        avatar:
            'https://img2.woyaogexing.com/2020/02/07/d48e4cec2ffd4afdb3b79f5905c0fce4!400x400.jpeg',
        name: '我给自己带盐',
        desc: '这个人很懒啥都没写~',
        content:
            '春蚕死去了，但留下了华贵丝绸；蝴蝶死去了，但留下了漂亮的衣裳；画眉飞去了，但留下了美妙的歌声；花朵凋谢了，但留下了缕缕幽香；蜡烛燃尽了，但留下一片光明；雷雨过去了，但留下了七彩霓虹',
        image:
            'http://n.sinaimg.cn/news/1_img/upload/cf3881ab/65/w1000h665/20200214/739e-ipmxpvz8262419.jpg',
        tag: '我们这群90后~',
        number: 100,
      ),
      const ListTopicModel(
        avatar:
            'https://img2.woyaogexing.com/2020/02/07/a0b239f0e803449686bd0f8358c9b3dc!400x400.jpeg',
        name: '子子',
        desc: '这个人很懒啥都没写~',
        content:
            '欲将沉醉换悲凉，清歌莫断肠。这混乱的尘世，究竟充斥了多少绝望和悲伤。你想去做一个勇敢的男子，为爱，为信仰，轰轰烈烈的奋斗一场。你周身充斥着无人可比的灵气和光芒。你有着与伟人比肩的才气和名声，你是那样高傲孤洁的男子。你的一寸狂心未说，已经几度黄昏雨',
        image:
            'http://n.sinaimg.cn/news/1_img/upload/cf3881ab/110/w1000h710/20200214/d3a7-ipmxpvz8262445.jpg',
        tag: '小心思~',
        number: 100,
      ),
      const ListTopicModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/07/d48e4cec2ffd4afdb3b79f5905c0fce4!400x400.jpeg',
        name: '我给自己带盐',
        desc: '这个人很懒啥都没写~',
        content:
        '春蚕死去了，但留下了华贵丝绸；蝴蝶死去了，但留下了漂亮的衣裳；画眉飞去了，但留下了美妙的歌声；花朵凋谢了，但留下了缕缕幽香；蜡烛燃尽了，但留下一片光明；雷雨过去了，但留下了七彩霓虹',
        image:
        'http://n.sinaimg.cn/news/1_img/upload/cf3881ab/65/w1000h665/20200214/739e-ipmxpvz8262419.jpg',
        tag: '我们这群90后~',
        number: 100,
      ),
      const ListTopicModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/07/a0b239f0e803449686bd0f8358c9b3dc!400x400.jpeg',
        name: '子子',
        desc: '这个人很懒啥都没写~',
        content:
        '欲将沉醉换悲凉，清歌莫断肠。这混乱的尘世，究竟充斥了多少绝望和悲伤。你想去做一个勇敢的男子，为爱，为信仰，轰轰烈烈的奋斗一场。你周身充斥着无人可比的灵气和光芒。你有着与伟人比肩的才气和名声，你是那样高傲孤洁的男子。你的一寸狂心未说，已经几度黄昏雨',
        image:
        'http://n.sinaimg.cn/news/1_img/upload/cf3881ab/110/w1000h710/20200214/d3a7-ipmxpvz8262445.jpg',
        tag: '小心思~',
        number: 100,
      ),
      const ListTopicModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/07/d48e4cec2ffd4afdb3b79f5905c0fce4!400x400.jpeg',
        name: '我给自己带盐',
        desc: '这个人很懒啥都没写~',
        content:
        '春蚕死去了，但留下了华贵丝绸；蝴蝶死去了，但留下了漂亮的衣裳；画眉飞去了，但留下了美妙的歌声；花朵凋谢了，但留下了缕缕幽香；蜡烛燃尽了，但留下一片光明；雷雨过去了，但留下了七彩霓虹',
        image:
        'http://n.sinaimg.cn/news/1_img/upload/cf3881ab/65/w1000h665/20200214/739e-ipmxpvz8262419.jpg',
        tag: '我们这群90后~',
        number: 100,
      ),
      const ListTopicModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/07/a0b239f0e803449686bd0f8358c9b3dc!400x400.jpeg',
        name: '子子',
        desc: '这个人很懒啥都没写~',
        content:
        '欲将沉醉换悲凉，清歌莫断肠。这混乱的尘世，究竟充斥了多少绝望和悲伤。你想去做一个勇敢的男子，为爱，为信仰，轰轰烈烈的奋斗一场。你周身充斥着无人可比的灵气和光芒。你有着与伟人比肩的才气和名声，你是那样高傲孤洁的男子。你的一寸狂心未说，已经几度黄昏雨',
        image:
        'http://n.sinaimg.cn/news/1_img/upload/cf3881ab/110/w1000h710/20200214/d3a7-ipmxpvz8262445.jpg',
        tag: '小心思~',
        number: 100,
      ),
      const ListTopicModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/07/d48e4cec2ffd4afdb3b79f5905c0fce4!400x400.jpeg',
        name: '我给自己带盐',
        desc: '这个人很懒啥都没写~',
        content:
        '春蚕死去了，但留下了华贵丝绸；蝴蝶死去了，但留下了漂亮的衣裳；画眉飞去了，但留下了美妙的歌声；花朵凋谢了，但留下了缕缕幽香；蜡烛燃尽了，但留下一片光明；雷雨过去了，但留下了七彩霓虹',
        image:
        'http://n.sinaimg.cn/news/1_img/upload/cf3881ab/65/w1000h665/20200214/739e-ipmxpvz8262419.jpg',
        tag: '我们这群90后~',
        number: 100,
      ),
      const ListTopicModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/07/a0b239f0e803449686bd0f8358c9b3dc!400x400.jpeg',
        name: '子子',
        desc: '这个人很懒啥都没写~',
        content:
        '欲将沉醉换悲凉，清歌莫断肠。这混乱的尘世，究竟充斥了多少绝望和悲伤。你想去做一个勇敢的男子，为爱，为信仰，轰轰烈烈的奋斗一场。你周身充斥着无人可比的灵气和光芒。你有着与伟人比肩的才气和名声，你是那样高傲孤洁的男子。你的一寸狂心未说，已经几度黄昏雨',
        image:
        'http://n.sinaimg.cn/news/1_img/upload/cf3881ab/110/w1000h710/20200214/d3a7-ipmxpvz8262445.jpg',
        tag: '小心思~',
        number: 100,
      ),
      const ListTopicModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/07/d48e4cec2ffd4afdb3b79f5905c0fce4!400x400.jpeg',
        name: '我给自己带盐',
        desc: '这个人很懒啥都没写~',
        content:
        '春蚕死去了，但留下了华贵丝绸；蝴蝶死去了，但留下了漂亮的衣裳；画眉飞去了，但留下了美妙的歌声；花朵凋谢了，但留下了缕缕幽香；蜡烛燃尽了，但留下一片光明；雷雨过去了，但留下了七彩霓虹',
        image:
        'http://n.sinaimg.cn/news/1_img/upload/cf3881ab/65/w1000h665/20200214/739e-ipmxpvz8262419.jpg',
        tag: '我们这群90后~',
        number: 100,
      ),
      const ListTopicModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/07/a0b239f0e803449686bd0f8358c9b3dc!400x400.jpeg',
        name: '子子',
        desc: '这个人很懒啥都没写~',
        content:
        '欲将沉醉换悲凉，清歌莫断肠。这混乱的尘世，究竟充斥了多少绝望和悲伤。你想去做一个勇敢的男子，为爱，为信仰，轰轰烈烈的奋斗一场。你周身充斥着无人可比的灵气和光芒。你有着与伟人比肩的才气和名声，你是那样高傲孤洁的男子。你的一寸狂心未说，已经几度黄昏雨',
        image:
        'http://n.sinaimg.cn/news/1_img/upload/cf3881ab/110/w1000h710/20200214/d3a7-ipmxpvz8262445.jpg',
        tag: '小心思~',
        number: 100,
      ),
      const ListTopicModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/07/d48e4cec2ffd4afdb3b79f5905c0fce4!400x400.jpeg',
        name: '我给自己带盐',
        desc: '这个人很懒啥都没写~',
        content:
        '春蚕死去了，但留下了华贵丝绸；蝴蝶死去了，但留下了漂亮的衣裳；画眉飞去了，但留下了美妙的歌声；花朵凋谢了，但留下了缕缕幽香；蜡烛燃尽了，但留下一片光明；雷雨过去了，但留下了七彩霓虹',
        image:
        'http://n.sinaimg.cn/news/1_img/upload/cf3881ab/65/w1000h665/20200214/739e-ipmxpvz8262419.jpg',
        tag: '我们这群90后~',
        number: 100,
      ),
      const ListTopicModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/07/a0b239f0e803449686bd0f8358c9b3dc!400x400.jpeg',
        name: '子子',
        desc: '这个人很懒啥都没写~',
        content:
        '欲将沉醉换悲凉，清歌莫断肠。这混乱的尘世，究竟充斥了多少绝望和悲伤。你想去做一个勇敢的男子，为爱，为信仰，轰轰烈烈的奋斗一场。你周身充斥着无人可比的灵气和光芒。你有着与伟人比肩的才气和名声，你是那样高傲孤洁的男子。你的一寸狂心未说，已经几度黄昏雨',
        image:
        'http://n.sinaimg.cn/news/1_img/upload/cf3881ab/110/w1000h710/20200214/d3a7-ipmxpvz8262445.jpg',
        tag: '小心思~',
        number: 100,
      ),
      const ListTopicModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/07/d48e4cec2ffd4afdb3b79f5905c0fce4!400x400.jpeg',
        name: '我给自己带盐',
        desc: '这个人很懒啥都没写~',
        content:
        '春蚕死去了，但留下了华贵丝绸；蝴蝶死去了，但留下了漂亮的衣裳；画眉飞去了，但留下了美妙的歌声；花朵凋谢了，但留下了缕缕幽香；蜡烛燃尽了，但留下一片光明；雷雨过去了，但留下了七彩霓虹',
        image:
        'http://n.sinaimg.cn/news/1_img/upload/cf3881ab/65/w1000h665/20200214/739e-ipmxpvz8262419.jpg',
        tag: '我们这群90后~',
        number: 100,
      ),
      const ListTopicModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/07/a0b239f0e803449686bd0f8358c9b3dc!400x400.jpeg',
        name: '子子',
        desc: '这个人很懒啥都没写~',
        content:
        '欲将沉醉换悲凉，清歌莫断肠。这混乱的尘世，究竟充斥了多少绝望和悲伤。你想去做一个勇敢的男子，为爱，为信仰，轰轰烈烈的奋斗一场。你周身充斥着无人可比的灵气和光芒。你有着与伟人比肩的才气和名声，你是那样高傲孤洁的男子。你的一寸狂心未说，已经几度黄昏雨',
        image:
        'http://n.sinaimg.cn/news/1_img/upload/cf3881ab/110/w1000h710/20200214/d3a7-ipmxpvz8262445.jpg',
        tag: '小心思~',
        number: 100,
      ),
      const ListTopicModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/07/d48e4cec2ffd4afdb3b79f5905c0fce4!400x400.jpeg',
        name: '我给自己带盐',
        desc: '这个人很懒啥都没写~',
        content:
        '春蚕死去了，但留下了华贵丝绸；蝴蝶死去了，但留下了漂亮的衣裳；画眉飞去了，但留下了美妙的歌声；花朵凋谢了，但留下了缕缕幽香；蜡烛燃尽了，但留下一片光明；雷雨过去了，但留下了七彩霓虹',
        image:
        'http://n.sinaimg.cn/news/1_img/upload/cf3881ab/65/w1000h665/20200214/739e-ipmxpvz8262419.jpg',
        tag: '我们这群90后~',
        number: 100,
      ),
      const ListTopicModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/07/a0b239f0e803449686bd0f8358c9b3dc!400x400.jpeg',
        name: '子子',
        desc: '这个人很懒啥都没写~',
        content:
        '欲将沉醉换悲凉，清歌莫断肠。这混乱的尘世，究竟充斥了多少绝望和悲伤。你想去做一个勇敢的男子，为爱，为信仰，轰轰烈烈的奋斗一场。你周身充斥着无人可比的灵气和光芒。你有着与伟人比肩的才气和名声，你是那样高傲孤洁的男子。你的一寸狂心未说，已经几度黄昏雨',
        image:
        'http://n.sinaimg.cn/news/1_img/upload/cf3881ab/110/w1000h710/20200214/d3a7-ipmxpvz8262445.jpg',
        tag: '小心思~',
        number: 100,
      ),

    ].obs;
  }
}
