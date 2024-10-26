.class public final enum Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;
.super Ljava/lang/Enum;
.source "ByteBuddyAgent.java"

# interfaces
.implements Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForCurrentVm"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForJava9CapableVm;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;",
        ">;",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;


# instance fields
.field private final dispatcher:Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 714
    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;

    .line 709
    sget-object v2, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 724
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 725
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForJava9CapableVm;->make()Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;->dispatcher:Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;
    .locals 1

    .line 709
    const-class v0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;
    .locals 1

    .line 709
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;

    return-object v0
.end method


# virtual methods
.method public resolve()Ljava/lang/String;
    .locals 1

    .line 730
    iget-object v0, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;->dispatcher:Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;

    invoke-interface {v0}, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;->resolve()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
