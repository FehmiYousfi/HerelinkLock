.class public final enum Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;
.super Ljava/lang/Enum;
.source "TypeDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Assigner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;",
        ">;",
        "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
        "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;

.field public static final enum INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 665
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;

    .line 660
    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;->$VALUES:[Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 660
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;
    .locals 1

    .line 660
    const-class v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;
    .locals 1

    .line 660
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;->$VALUES:[Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 660
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;->onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;

    move-result-object p1

    return-object p1
.end method

.method public onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;
    .locals 1

    .line 669
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForGenericArray;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForGenericArray;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-object v0
.end method

.method public bridge synthetic onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 660
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;->onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;

    move-result-object p1

    return-object p1
.end method

.method public onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;
    .locals 1

    .line 689
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForNonGenericType;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForNonGenericType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public bridge synthetic onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 660
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;->onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;

    move-result-object p1

    return-object p1
.end method

.method public onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;
    .locals 1

    .line 679
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-object v0
.end method

.method public bridge synthetic onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 660
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;->onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;

    move-result-object p1

    return-object p1
.end method

.method public onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;
    .locals 1

    .line 684
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForTypeVariable;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForTypeVariable;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-object v0
.end method

.method public bridge synthetic onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 660
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;->onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;

    move-result-object p1

    return-object p1
.end method

.method public onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;
    .locals 2

    .line 674
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A wildcard is not a first level type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
