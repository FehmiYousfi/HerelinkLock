.class final enum Lnet/bytebuddy/matcher/StringMatcher$Mode$2;
.super Lnet/bytebuddy/matcher/StringMatcher$Mode;
.source "StringMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/StringMatcher$Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/matcher/StringMatcher$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$1;)V

    return-void
.end method


# virtual methods
.method protected matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
