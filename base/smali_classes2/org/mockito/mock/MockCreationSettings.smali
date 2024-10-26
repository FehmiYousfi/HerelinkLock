.class public interface abstract Lorg/mockito/mock/MockCreationSettings;
.super Ljava/lang/Object;
.source "MockCreationSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getConstructorArgs()[Ljava/lang/Object;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method

.method public abstract getDefaultAnswer()Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/stubbing/Answer<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getExtraInterfaces()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract getInvocationListeners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/listeners/InvocationListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMockName()Lorg/mockito/mock/MockName;
.end method

.method public abstract getOuterClassInstance()Ljava/lang/Object;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method

.method public abstract getSerializableMode()Lorg/mockito/mock/SerializableMode;
.end method

.method public abstract getSpiedInstance()Ljava/lang/Object;
.end method

.method public abstract getTypeToMock()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract isSerializable()Z
.end method

.method public abstract isStubOnly()Z
.end method

.method public abstract isUsingConstructor()Z
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method
