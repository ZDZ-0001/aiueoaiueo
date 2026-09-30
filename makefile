#コンパイラ
CC  = g++
#言語
LAN = -fexec-charset=CP932
#c,c++ファイル
SRCS    = main.cpp
#実行ファイル名
TARGET  = main
#オブジェクトファイル名
OBJS	= $(SRCS:.cpp=.o)

$(TARGET):
	@$(CC) $(LAN) $(SRCS) -o $(TARGET)

#実行後削除
all: $(TARGET) exe clean

#実行後無削除
all_n: $(TARGET) exe

exe:
	@.\$(TARGET).exe

clean:
	@del $(TARGET).exe
