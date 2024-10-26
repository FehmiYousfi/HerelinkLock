.class public interface abstract Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;
.super Ljava/lang/Object;
.source "ByteBuddyAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AttachmentProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForToolsJarVm;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 397
    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;

    const/4 v1, 0x6

    new-array v1, v1, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    sget-object v2, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForToolsJarVm;->JVM_ROOT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForToolsJarVm;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForToolsJarVm;->JDK_ROOT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForToolsJarVm;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForToolsJarVm;->MACINTOSH:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForToolsJarVm;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;-><init>([Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->DEFAULT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    return-void
.end method


# virtual methods
.method public abstract attempt()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;
.end method
