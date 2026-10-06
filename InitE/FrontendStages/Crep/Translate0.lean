import InitE.CrepKernelComputation
import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.MainData
import InitE.FrontendStages.Crep.Data0
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Pancake.PanLang
namespace InitE.FrontendStages.Crep
theorem translate0_eq :
    InitE.CrepComputation.compileDeclaration functionMap exceptionMap
      InitE.FrontendStages.generatedMain = some output0 := by
  rw [InitE.CrepKernelComputation.compileDeclaration_eq]
  dsimp only [output0]
  rw [InitE.CrepKernelComputation.crepProgToHOL_function_eq]
  dsimp only [InitE.FrontendStages.generatedMain]
  rw [InitE.FrontendStages.Declarations.globalInitializers_structural_eq]
  dsimp only [functionMap, functionSkeleton, exceptionMap, exceptionSkeleton]
  rw [InitE.FrontendCodecComputation.shapeToHOL_function_eq]
  kernel_rfl
#print axioms translate0_eq
end InitE.FrontendStages.Crep
