.class public final enum Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;
.super Ljava/lang/Enum;
.source "MethodGraph.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForJVMMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod$Token;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer<",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod$Token;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 657
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;

    .line 652
    sget-object v2, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 652
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;
    .locals 1

    .line 652
    const-class v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;
    .locals 1

    .line 652
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic harmonize(Lnet/bytebuddy/description/method/MethodDescription$TypeToken;)Ljava/lang/Object;
    .locals 0

    .line 652
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod;->harmonize(Lnet/bytebuddy/description/method/MethodDescription$TypeToken;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod$Token;

    move-result-object p1

    return-object p1
.end method

.method public harmonize(Lnet/bytebuddy/description/method/MethodDescription$TypeToken;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod$Token;
    .locals 1

    .line 661
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod$Token;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJVMMethod$Token;-><init>(Lnet/bytebuddy/description/method/MethodDescription$TypeToken;)V

    return-object v0
.end method
