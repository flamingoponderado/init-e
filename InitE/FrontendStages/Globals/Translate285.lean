import InitE.FrontendStages.Globals.Output285
import InitE.FrontendStages.Declarations.Data285
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate269
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate285_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified285) =
        some globalOutput285 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal285 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified285) := by trivial
theorem globalException285_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified285) = none := by rfl
#print axioms globalTranslate285_eq
end InitE.FrontendStages.Declarations
