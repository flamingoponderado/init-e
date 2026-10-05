import InitE.FrontendStages.Globals.Output724
import InitE.FrontendStages.Declarations.Data724
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate707
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate724_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified724) =
        some globalOutput724 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal724 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified724) := by trivial
theorem globalException724_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified724) = none := by rfl
#print axioms globalTranslate724_eq
end InitE.FrontendStages.Declarations
