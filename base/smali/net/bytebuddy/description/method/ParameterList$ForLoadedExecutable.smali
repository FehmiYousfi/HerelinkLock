.class public abstract Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;
.super Lnet/bytebuddy/description/method/ParameterList$AbstractBase;
.source "ParameterList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForLoadedExecutable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmMethod;,
        Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmConstructor;,
        Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfMethod;,
        Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfConstructor;,
        Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/description/method/ParameterList$AbstractBase<",
        "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final DISPATCHER:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;


# instance fields
.field protected final executable:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    sget-object v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;

    sput-object v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->DISPATCHER:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Lnet/bytebuddy/description/method/ParameterList$AbstractBase;-><init>()V

    .line 132
    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->executable:Ljava/lang/Object;

    return-void
.end method

.method public static of(Ljava/lang/reflect/Constructor;)Lnet/bytebuddy/description/method/ParameterList;
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

    .line 142
    sget-object v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->DISPATCHER:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;

    invoke-interface {v0, p0}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;->describe(Ljava/lang/reflect/Constructor;)Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/reflect/Method;)Lnet/bytebuddy/description/method/ParameterList;
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

    .line 152
    sget-object v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->DISPATCHER:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;

    invoke-interface {v0, p0}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;->describe(Ljava/lang/reflect/Method;)Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public size()I
    .locals 2

    .line 157
    sget-object v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->DISPATCHER:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->executable:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;->getParameterCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
