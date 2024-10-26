.class public Lorg/mockito/exceptions/verification/WantedButNotInvoked;
.super Lorg/mockito/exceptions/base/MockitoAssertionError;
.source "WantedButNotInvoked.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lorg/mockito/exceptions/base/MockitoAssertionError;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 22
    invoke-super {p0}, Lorg/mockito/exceptions/base/MockitoAssertionError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/StringUtil;->removeFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
