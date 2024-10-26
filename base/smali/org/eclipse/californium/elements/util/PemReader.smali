.class public Lorg/eclipse/californium/elements/util/PemReader;
.super Ljava/lang/Object;
.source "PemReader.java"


# static fields
.field private static final BEGIN_PATTERN:Ljava/util/regex/Pattern;

.field private static final END_PATTERN:Ljava/util/regex/Pattern;

.field public static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private reader:Ljava/io/BufferedReader;

.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lorg/eclipse/californium/elements/util/PemReader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/util/PemReader;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "^\\-+BEGIN\\s+([\\w\\s]+)\\-+$"

    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/util/PemReader;->BEGIN_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^\\-+END\\s+([\\w\\s]+)\\-+$"

    .line 33
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/util/PemReader;->END_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/PemReader;->reader:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 44
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/PemReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public readNextBegin()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lorg/eclipse/californium/elements/util/PemReader;->tag:Ljava/lang/String;

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/PemReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    sget-object v1, Lorg/eclipse/californium/elements/util/PemReader;->BEGIN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/PemReader;->tag:Ljava/lang/String;

    .line 56
    sget-object v0, Lorg/eclipse/californium/elements/util/PemReader;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/PemReader;->tag:Ljava/lang/String;

    const-string v2, "Found Begin of {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    :cond_1
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/PemReader;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public readToEnd()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    :goto_0
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/PemReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 68
    sget-object v2, Lorg/eclipse/californium/elements/util/PemReader;->END_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lorg/eclipse/californium/elements/util/PemReader;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 73
    sget-object v1, Lorg/eclipse/californium/elements/util/PemReader;->LOGGER:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/eclipse/californium/elements/util/PemReader;->tag:Ljava/lang/String;

    const-string v3, "Found End of {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 76
    :cond_0
    sget-object v0, Lorg/eclipse/californium/elements/util/PemReader;->LOGGER:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/eclipse/californium/elements/util/PemReader;->tag:Ljava/lang/String;

    const-string v3, "Found End of {}, but expected {}!"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lorg/eclipse/californium/elements/util/PemReader;->tag:Ljava/lang/String;

    return-object v0
.end method
