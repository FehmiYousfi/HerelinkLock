.class public Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;
.super Lorg/mockito/internal/invocation/InvocationMatcher;
.source "StubbedInvocationMatcher.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;
.implements Ljava/io/Serializable;
.implements Lorg/mockito/stubbing/Stubbing;


# static fields
.field private static final serialVersionUID:J = 0x44442c0e943de497L


# instance fields
.field private final answers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/mockito/stubbing/Answer;",
            ">;"
        }
    .end annotation
.end field

.field private usedAt:Lorg/mockito/invocation/DescribedInvocation;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/invocation/InvocationMatcher;Lorg/mockito/stubbing/Answer;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Lorg/mockito/internal/invocation/InvocationMatcher;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mockito/internal/invocation/InvocationMatcher;->getMatchers()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/mockito/internal/invocation/InvocationMatcher;-><init>(Lorg/mockito/invocation/Invocation;Ljava/util/List;)V

    .line 21
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answers:Ljava/util/Queue;

    .line 26
    iget-object p1, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answers:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addAnswer(Lorg/mockito/stubbing/Answer;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answers:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answers:Ljava/util/Queue;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lorg/mockito/stubbing/Answer;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-interface {v1, p1}, Lorg/mockito/stubbing/Answer;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 34
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public markStubUsed(Lorg/mockito/invocation/DescribedInvocation;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->usedAt:Lorg/mockito/invocation/DescribedInvocation;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/mockito/internal/invocation/InvocationMatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stubbed with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answers:Ljava/util/Queue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasUsed()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->usedAt:Lorg/mockito/invocation/DescribedInvocation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
