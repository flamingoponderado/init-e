import InitE.FrontendStages.Globals.Output634
import InitE.FrontendStages.Declarations.Data634
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate609
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate634_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified634) =
        some globalOutput634 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal634 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified634) := by trivial
theorem globalException634_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified634) = none := by rfl
#print axioms globalTranslate634_eq
end InitE.FrontendStages.Declarations
