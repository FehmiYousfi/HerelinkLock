.class public interface abstract Lorg/mockito/internal/InternalMockHandler;
.super Ljava/lang/Object;
.source "InternalMockHandler.java"

# interfaces
.implements Lorg/mockito/invocation/MockHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/invocation/MockHandler;"
    }
.end annotation


# virtual methods
.method public abstract getInvocationContainer()Lorg/mockito/internal/stubbing/InvocationContainer;
.end method

.method public abstract getMockSettings()Lorg/mockito/mock/MockCreationSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setAnswersForStubbing(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/stubbing/Answer<",
            "*>;>;)V"
        }
    .end annotation
.end method
