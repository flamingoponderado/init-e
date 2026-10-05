import InitE.FrontendStages.Globals.Output301
import InitE.FrontendStages.Declarations.Data301
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate284
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate301_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified301) =
        some globalOutput301 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal301 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified301) := by trivial
theorem globalException301_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified301) = none := by rfl
#print axioms globalTranslate301_eq
end InitE.FrontendStages.Declarations
