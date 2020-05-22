$("#select_album").click(readAlbums);

function readAlbums() {
  const albumOwner = $("input[name=artist]").val();

  $.ajax({
    url: "/asyncReadAlbums",
    type: "post",
    data: { albumOwner: albumOwner },
    success: function (data) {
      const albumList = $("#albums");
      albumList.empty();

      const defaultOption = document.createElement("option");
      defaultOption.value = "default";
      defaultOption.innerHTML = "앨범 선택";

      albumList.append(defaultOption);

      for (let i = 0; i < data.length; i++) {
        let albumNo = data[i].albumNo;
        let albumName = data[i].albumName;

        const option = document.createElement("option");

        option.value = albumNo;
        option.setAttribute("albumName", albumName);
        option.id = albumNo;
        option.innerHTML = albumName;

        albumList.append(option);
      }
    },
    error: function () {
      alert("앨범 목록 조회에 실패하였습니다.");
    },
  });
}

$(".insert_album").hide();

$("#add_input_album").click(function () {
  $(".insert_album").show();
});

$("#add_album_btn").click(function () {
  const albumOwner = $("input[name=artist]").val();
  const albumName = $("#input_album").val();
  if (albumName.length > 200) {
    alert("앨범 제목은 200자 이하만 가능합니다.");
  } else if (albumName.length == 0) {
    alert("앨범 제목을 입력해주세요");
  } else {
    $.ajax({
      url: "/asyncInsertAlbum",
      type: "POST",
      data: {
        albumOwner: albumOwner,
        albumName: albumName,
      },
      success: function (data) {
        const result = Number(data);

        switch (result) {
          case -1: // 같은 이름의 앨범이 있을때
            alert("이미 같은 이름의 앨범이 있습니다.");
            break;

          case 0: // 앨범 등록에 실패 했을때
            alert(
              "앨범 등록에 실패하였습니다. 오류가 반복되면 관리자에게 문의하세요."
            );
            break;

          case 1: // 앨범 등록에 성공 했을때
            $("#input_album").val("");
            $(".insert_album").hide();
            readAlbums();
            break;
        }
      },
      error: function () {
        alert("앨범 등록에 실패하였습니다.");
      },
    });
  }
});

$("form").submit(function () {
  const imgRegExp = /(.jpg)$/;
  const mp3RegExp = /(.mp3)$/;

  if ($("#title").val().length == 0) {
    alert("음원 타이틀을 입력해주세요");
    return false;
  } else if ($("#title").val().length > 200) {
    alert("음원 타이틀은 200자 미만만 가능합니다");
    return false;
  }

  if ($("#albums").val() == "default") {
    alert("앨범을 목록에서 선택해주세요");
    return false;
  }

  if (
    $("#input_music").val() != "" &&
    !mp3RegExp.test($("#input_music").val())
  ) {
    alert("음원은 mp3만 업로드 가능합니다.");
    return false;
  }

  return true;
});

$("#albums").change(function () {
  const albumNo = $(this).val();
  const albumImg = $(".img_container").children();
  albumImg.remove();

  $.ajax({
    url: "/asyncReadAlbumByAlbumNo",
    type: "post",
    data: { albumNo: albumNo },
    success: function (data) {
      if (data.albumPath != null) {
        const newAlbumImg = document.createElement("img");
        newAlbumImg.setAttribute(
          "src",
          "/src/imgs/albumImg/" + data.albumPath + ".jpg"
        );
        $(".img_container").append(newAlbumImg);
      }
    },
    error: function () {
      alert("앨범 이미지 조회 실패");
    },
  });
});
