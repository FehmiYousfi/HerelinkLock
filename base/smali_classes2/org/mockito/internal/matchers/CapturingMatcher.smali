.class public Lorg/mockito/internal/matchers/CapturingMatcher;
.super Ljava/lang/Object;
.source "CapturingMatcher.java"

# interfaces
.implements Lorg/mockito/ArgumentMatcher;
.implements Lorg/mockito/internal/matchers/CapturesArguments;
.implements Lorg/mockito/internal/matchers/VarargMatcher;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/ArgumentMatcher<",
        "TT;>;",
        "Lorg/mockito/internal/matchers/CapturesArguments;",
        "Lorg/mockito/internal/matchers/VarargMatcher;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final arguments:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->arguments:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public captureFrom(Ljava/lang/Object;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->arguments:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAllValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->arguments:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getLastValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->arguments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lorg/mockito/internal/matchers/CapturingMatcher;->arguments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 30
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->noArgumentValueWasCaptured()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<Capturing argument>"

    return-object v0
.end method
