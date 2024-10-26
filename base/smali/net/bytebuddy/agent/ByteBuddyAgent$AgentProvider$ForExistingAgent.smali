.class public Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;
.super Ljava/lang/Object;
.source "ByteBuddyAgent.java"

# interfaces
.implements Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForExistingAgent"
.end annotation


# instance fields
.field private agent:Ljava/io/File;


# direct methods
.method protected constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 897
    iput-object p1, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;->agent:Ljava/io/File;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 883
    instance-of p1, p1, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 883
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;->agent:Ljava/io/File;

    iget-object p1, p1, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;->agent:Ljava/io/File;

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 883
    iget-object v0, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;->agent:Ljava/io/File;

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve()Ljava/io/File;
    .locals 1

    .line 902
    iget-object v0, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;->agent:Ljava/io/File;

    return-object v0
.end method
