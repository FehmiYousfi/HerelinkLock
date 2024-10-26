.class public final enum Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;
.super Ljava/lang/Enum;
.source "ClassInjector.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForLegacyVm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;",
        ">;",
        "Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 997
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;

    .line 992
    sget-object v2, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 992
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;
    .locals 1

    .line 992
    const-class v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;
    .locals 1

    .line 992
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;

    return-object v0
.end method


# virtual methods
.method public defineClass(Ljava/lang/Object;[B)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[B)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1021
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot dispatch method for java.lang.invoke.MethodHandles$Lookup"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dropLookupMode(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 1016
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot dispatch method for java.lang.invoke.MethodHandles$Lookup"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAlive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lookupModes(Ljava/lang/Object;)I
    .locals 1

    .line 1011
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot dispatch method for java.lang.invoke.MethodHandles$Lookup"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lookupType(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1006
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot dispatch method for java.lang.invoke.MethodHandles$Lookup"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
