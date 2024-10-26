.class Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$DeeplyStubbedAnswer;
.super Ljava/lang/Object;
.source "ReturnsDeepStubs.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeeplyStubbedAnswer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final mock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$DeeplyStubbedAnswer;->mock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 156
    iget-object p1, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$DeeplyStubbedAnswer;->mock:Ljava/lang/Object;

    return-object p1
.end method
