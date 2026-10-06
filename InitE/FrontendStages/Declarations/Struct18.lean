import InitE.FrontendCodecComputation
import InitE.CompactComputation
import InitE.StructKernelComputation
import InitE.FrontendStages.Declarations.Data18
import InitE.StructComputation
import InitE.FrontendStages.Declarations.Struct2
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem struct18_eq (context finalContext : Flapjack.Pancake.PanStructs.CompileShapeExact.ContextExact) :
    InitE.StructComputation.compileDeclaration context finalContext simplified18 = some simplified18 := by
  apply InitE.StructKernelComputation.declaration_identity
  change InitE.StructKernelComputation.declarationFree (Flapjack.Pancake.PanLang.declToHOL simplifiedData18) = true
  rw [InitE.FrontendCodecComputation.declToHOL_eq]
  kernel_rfl
#print axioms struct18_eq
end InitE.FrontendStages.Declarations
