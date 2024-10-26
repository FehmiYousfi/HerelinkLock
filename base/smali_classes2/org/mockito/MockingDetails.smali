.class public interface abstract Lorg/mockito/MockingDetails;
.super Ljava/lang/Object;
.source "MockingDetails.java"


# virtual methods
.method public abstract getInvocations()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMockCreationSettings()Lorg/mockito/mock/MockCreationSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/mock/MockCreationSettings<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getStubbings()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isMock()Z
.end method

.method public abstract isSpy()Z
.end method

.method public abstract printInvocations()Ljava/lang/String;
.end method
