import InitE.FrontendStages.Globals.Output570
import InitE.FrontendStages.Declarations.Data570
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate550
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate570_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified570) =
        some globalOutput570 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal570 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified570) := by trivial
theorem globalException570_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified570) = none := by rfl
#print axioms globalTranslate570_eq
end InitE.FrontendStages.Declarations
