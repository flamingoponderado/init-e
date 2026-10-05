import InitE.FrontendStages.Globals.Output574
import InitE.FrontendStages.Declarations.Data574
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate554
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate574_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified574) =
        some globalOutput574 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal574 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified574) := by trivial
theorem globalException574_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified574) = none := by rfl
#print axioms globalTranslate574_eq
end InitE.FrontendStages.Declarations
