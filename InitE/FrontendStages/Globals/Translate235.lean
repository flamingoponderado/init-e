import InitE.FrontendStages.Globals.Output235
import InitE.FrontendStages.Declarations.Data235
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate217
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate235_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified235) =
        some globalOutput235 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal235 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified235) := by trivial
theorem globalException235_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified235) = none := by rfl
#print axioms globalTranslate235_eq
end InitE.FrontendStages.Declarations
