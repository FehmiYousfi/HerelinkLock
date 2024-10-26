.class public Lorg/mockito/internal/verification/DefaultRegisteredInvocations;
.super Ljava/lang/Object;
.source "DefaultRegisteredInvocations.java"

# interfaces
.implements Lorg/mockito/internal/verification/RegisteredInvocations;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/verification/DefaultRegisteredInvocations$RemoveToString;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x251d62bf4601b922L


# instance fields
.field private final invocations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public add(Lorg/mockito/invocation/Invocation;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 28
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 52
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    monitor-enter v0

    .line 43
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    new-instance v0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations$RemoveToString;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/mockito/internal/verification/DefaultRegisteredInvocations$RemoveToString;-><init>(Lorg/mockito/internal/verification/DefaultRegisteredInvocations$1;)V

    invoke-static {v1, v0}, Lorg/mockito/internal/util/collections/ListUtil;->filter(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Filter;)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 44
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 56
    iget-object v0, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeLast()V
    .locals 2

    .line 33
    iget-object v0, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    iget-object v1, p0, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;->invocations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 37
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
