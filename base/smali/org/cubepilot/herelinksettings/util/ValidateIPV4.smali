.class public Lorg/cubepilot/herelinksettings/util/ValidateIPV4;
.super Ljava/lang/Object;
.source "ValidateIPV4.java"


# static fields
.field private static IPV4_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final IPV4_REGEX:Ljava/lang/String; = "(([0-1]?[0-9]{1,2}\\.)|(2[0-4][0-9]\\.)|(25[0-5]\\.)){3}(([0-1]?[0-9]{1,2})|(2[0-4][0-9])|(25[0-5]))"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(([0-1]?[0-9]{1,2}\\.)|(2[0-4][0-9]\\.)|(25[0-5]\\.)){3}(([0-1]?[0-9]{1,2})|(2[0-4][0-9])|(25[0-5]))"

    .line 8
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/cubepilot/herelinksettings/util/ValidateIPV4;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidIPV4(Ljava/lang/String;)Z
    .locals 1

    .line 11
    sget-object v0, Lorg/cubepilot/herelinksettings/util/ValidateIPV4;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method
