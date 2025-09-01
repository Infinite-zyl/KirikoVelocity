#!mainFile "../../../main.opy"

enum TestCase1 :
    CASE1 = "玩家排列检查"

rule "起跑线测试用例初始化":
    @Event global
    @Condition test_cases_index == null

    test_cases_index = 0
    test_cases_list = [
        TestCase1.CASE1,
    ]
    test_case = test_cases_list[test_cases_index]

