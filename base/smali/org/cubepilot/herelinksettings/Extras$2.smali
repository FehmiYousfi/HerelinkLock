.class Lorg/cubepilot/herelinksettings/Extras$2;
.super Ljava/lang/Object;
.source "Extras.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/Extras;->saveDnegName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/Extras;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/Extras;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/Extras$2;->this$0:Lorg/cubepilot/herelinksettings/Extras;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 345
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
