.class public interface abstract Lorg/mockito/plugins/MockMaker$TypeMockability;
.super Ljava/lang/Object;
.source "MockMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/plugins/MockMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TypeMockability"
.end annotation

.annotation runtime Lorg/mockito/Incubating;
.end annotation


# virtual methods
.method public abstract mockable()Z
.end method

.method public abstract nonMockableReason()Ljava/lang/String;
.end method
