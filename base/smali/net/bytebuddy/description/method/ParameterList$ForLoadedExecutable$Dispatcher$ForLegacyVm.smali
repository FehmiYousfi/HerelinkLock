.class public final enum Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;
.super Ljava/lang/Enum;
.source "ParameterList.java"

# interfaces
.implements Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForLegacyVm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;",
        ">;",
        "Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;

.field public static final enum INSTANCE:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 218
    new-instance v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;

    .line 213
    sget-object v2, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;
    .locals 1

    .line 213
    const-class v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;
    .locals 1

    .line 213
    sget-object v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;

    return-object v0
.end method


# virtual methods
.method public describe(Ljava/lang/reflect/Constructor;)Lnet/bytebuddy/description/method/ParameterList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 227
    new-instance v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmConstructor;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public describe(Ljava/lang/reflect/Method;)Lnet/bytebuddy/description/method/ParameterList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 232
    new-instance v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmMethod;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmMethod;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public getParameterCount(Ljava/lang/Object;)I
    .locals 1

    .line 222
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot dispatch method for java.lang.reflect.Executable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
