.class public final enum Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;
.super Ljava/lang/Enum;
.source "ByteBuddyAgent.java"

# interfaces
.implements Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForJigsawVm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;",
        ">;",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 541
    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;

    .line 536
    sget-object v2, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 536
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;
    .locals 1

    .line 536
    const-class v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;
    .locals 1

    .line 536
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJigsawVm;

    return-object v0
.end method


# virtual methods
.method public attempt()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;
    .locals 1

    .line 545
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Simple;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;

    move-result-object v0

    return-object v0
.end method