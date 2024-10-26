.class public abstract Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;
.super Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;
.source "ParameterDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForLoadedParameter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmConstructor;,
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmMethod;,
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfConstructor;,
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfMethod;,
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/reflect/AccessibleObject;",
        ">",
        "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;"
    }
.end annotation


# static fields
.field private static final DISPATCHER:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher;


# instance fields
.field protected final executable:Ljava/lang/reflect/AccessibleObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 192
    sget-object v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$CreationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher;

    sput-object v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->DISPATCHER:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/AccessibleObject;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;-><init>()V

    .line 211
    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->executable:Ljava/lang/reflect/AccessibleObject;

    .line 212
    iput p2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->index:I

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 222
    iget v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->index:I

    return v0
.end method

.method public getModifiers()I
    .locals 3

    .line 232
    sget-object v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->DISPATCHER:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->executable:Ljava/lang/reflect/AccessibleObject;

    iget v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->index:I

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher;->getModifiers(Ljava/lang/reflect/AccessibleObject;I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 217
    sget-object v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->DISPATCHER:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->executable:Ljava/lang/reflect/AccessibleObject;

    iget v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->index:I

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher;->getName(Ljava/lang/reflect/AccessibleObject;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasModifiers()Z
    .locals 1

    .line 239
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->isNamed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->getModifiers()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isNamed()Z
    .locals 3

    .line 227
    sget-object v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->DISPATCHER:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->executable:Ljava/lang/reflect/AccessibleObject;

    iget v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->index:I

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher;->isNamePresent(Ljava/lang/reflect/AccessibleObject;I)Z

    move-result v0

    return v0
.end method
