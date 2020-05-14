<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <!--↓↓ 스타일 시트를 추가할 시 이곳에 ↓↓-->
    <link rel="stylesheet" href="/src/css/playList/pleditPage.css" />
    <script src="https://kit.fontawesome.com/8bd2671777.js" crossorigin="anonymous"></script>
    <!--↑↑ 스타일 시트를 추가할 시 이곳에 ↑↑-->
    <title>KAIROS</title>
</head>

<body>
    <!-- header.jsp에 jquery와 jstl이 이미 추가되어 있습니다! -->
    <jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
    <!-- 우리 웹의 기본 틀이 될 구조입니다 -->
    <!-- section에 콘텐츠 작성하세요! -->
    <section>
        <div class="pleditoutline">
            <div class="pleditname">플레이리스트 순서변경</div>
            <div class="tototo">
                <button class="upimg"><i class="iconup fas fa-angle-up"></i></button>
                <button class="downimg"><i class="icondown fas fa-angle-down"></i></button>
                <select class="lineup">
                    <option>내 편집순</option>
                    <option>아티스트명↓(가-하)순</option>
                    <option>아티스트명↑(하-가)순</option>
                    <option>곡명↓(가-하)순</option>
                    <option>곡명↑(하-가)순</option>
                </select>
            </div>
            <div class="table">
                <table>
                    <tr class="pltr1">
                        <th width="5%"><input class="plchk" type="checkbox"></th>
                        <th width="5%" class="plsongNo">1</th>
                        <td width="90%">
                            <div class="stitle_dhg">&nbsp;&nbsp;곡며여어어어어어어어어어어어엉</div>
                            <div class="subtitle">&nbsp;&nbsp;&nbsp;가수명<span>&nbsp;&nbsp;|&nbsp;앨범명</span></div>
                        </td>
                    </tr>
                    <tr class="pltr1">
                        <th width="5%"><input class="plchk" type="checkbox"></th>
                        <th width="5%" class="plsongNo">2</th>
                        <td width="90%">
                            <div class="stitle_dhg">&nbsp;&nbsp;곡며여어어어어어어어어어어어엉</div>
                            <div class="subtitle">&nbsp;&nbsp;&nbsp;가수명<span>&nbsp;&nbsp;|&nbsp;앨범명</span></div>
                        </td>
                    </tr>
                    <tr class="pltr1">
                        <th width="5%"><input class="plchk" type="checkbox"></th>
                        <th width="5%" class="plsongNo">3</th>
                        <td width="90%">
                            <div class="stitle_dhg">&nbsp;&nbsp;곡며여어어어어어어어어어어어엉</div>
                            <div class="subtitle">&nbsp;&nbsp;&nbsp;가수명<span>&nbsp;&nbsp;|&nbsp;앨범명</span></div>
                        </td>
                    </tr>
                    <tr class="pltr1">
                        <th width="5%"><input class="plchk" type="checkbox"></th>
                        <th width="5%" class="plsongNo">4</th>
                        <td width="90%">
                            <div class="stitle_dhg">&nbsp;&nbsp;곡며여어어어어어어어어어어어엉</div>
                            <div class="subtitle">&nbsp;&nbsp;&nbsp;가수명<span>&nbsp;&nbsp;|&nbsp;앨범명</span></div>
                        </td>
                    </tr>
                    <tr class="pltr1">
                        <th width="5%"><input class="plchk" type="checkbox"></th>
                        <th width="5%" class="plsongNo">5</th>
                        <td width="90%">
                            <div class="stitle_dhg">&nbsp;&nbsp;곡며여어어어어어어어어어어어엉</div>
                            <div class="subtitle">&nbsp;&nbsp;&nbsp;가수명<span>&nbsp;&nbsp;|&nbsp;앨범명</span></div>
                        </td>
                    </tr>
                    <tr class="pltr1">
                        <th width="5%"><input class="plchk" type="checkbox"></th>
                        <th width="5%" class="plsongNo">6</th>
                        <td width="90%">
                            <div class="stitle_dhg">&nbsp;&nbsp;곡며여어어어어어어어어어어어엉</div>
                            <div class="subtitle">&nbsp;&nbsp;&nbsp;가수명<span>&nbsp;&nbsp;|&nbsp;앨범명</span></div>
                        </td>
                    </tr>
                    <tr class="pltr1">
                        <th width="5%"><input class="plchk" type="checkbox"></th>
                        <th width="5%" class="plsongNo">7</th>
                        <td width="90%">
                            <div class="stitle_dhg">&nbsp;&nbsp;곡며여어어어어어어어어어어어엉</div>
                            <div class="subtitle">&nbsp;&nbsp;&nbsp;가수명<span>&nbsp;&nbsp;|&nbsp;앨범명</span></div>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="tototo">
                <button class="upimg"><i class="iconup fas fa-angle-up"></i></button>
                <button class="downimg"><i class="icondown fas fa-angle-down"></i></button>
                <select class="lineup">
                    <option>내 편집순</option>
                    <option>아티스트명↓(가-하)순</option>
                    <option>아티스트명↑(하-가)순</option>
                    <option>곡명↓(가-하)순</option>
                    <option>곡명↑(하-가)순</option>
                </select>
            </div>
            <div class="sub">
                <input class="plsubmit" type="submit" name="lineupsong" value="수정 완료">
                <input class="cancel" type="button" name="cancel" value="취소">
            </div>
        </div>
    </section>
    <script>
        $(function() {

            $(".upimg").click(function() {
                var arr = $(".plchk:checked").parent().parent();
                var prev = arr.eq(0).prev();
                for (var i = 0; i < arr.length; i++) {
                    prev.before(arr[i]);
                }
            });
            $(".downimg").click(function() {
                var arr = $(".plchk:checked").parent().parent();
                var next = arr.eq(arr.length - 1).next();
                for (var i = arr.length - 1; i >= 0; i--) {
                    next.after(arr[i]);
                }
            });
            $(".plsubmit").click(function() {
                var arr = $(".pltr1");
                $.each(arr, function(index, item) {
                    $(item).children().eq(1).html(index + 1);
                });

            });
        });

    </script>
    <!-- ↓↓ JS 파일 추가시 이곳에 ↓↓-->
    <!-- ↑↑ JS 파일 추가시 이곳에 ↑↑-->
</body>

</html>
