.class public Lorg/eclipse/californium/elements/util/DaemonThreadFactory;
.super Lorg/eclipse/californium/elements/util/NamedThreadFactory;
.source "DaemonThreadFactory.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lorg/eclipse/californium/elements/util/NamedThreadFactory;-><init>(Ljava/lang/String;Ljava/lang/ThreadGroup;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ThreadGroup;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/elements/util/NamedThreadFactory;-><init>(Ljava/lang/String;Ljava/lang/ThreadGroup;)V

    return-void
.end method


# virtual methods
.method protected createDaemonThreads()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
