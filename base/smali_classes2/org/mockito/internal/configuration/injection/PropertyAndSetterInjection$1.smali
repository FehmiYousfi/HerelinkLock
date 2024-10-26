.class Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection$1;
.super Ljava/lang/Object;
.source "PropertyAndSetterInjection.java"

# interfaces
.implements Lorg/mockito/internal/util/collections/ListUtil$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/internal/util/collections/ListUtil$Filter<",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;


# direct methods
.method constructor <init>(Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection$1;->this$0:Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic isOut(Ljava/lang/Object;)Z
    .locals 0

    .line 72
    check-cast p1, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection$1;->isOut(Ljava/lang/reflect/Field;)Z

    move-result p1

    return p1
.end method

.method public isOut(Ljava/lang/reflect/Field;)Z
    .locals 1

    .line 74
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
