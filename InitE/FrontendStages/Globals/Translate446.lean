import InitE.FrontendStages.Globals.Output446
import InitE.FrontendStages.Declarations.Data446
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate425
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate446_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified446) =
        some globalOutput446 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal446 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified446) := by trivial
theorem globalException446_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified446) = none := by rfl
#print axioms globalTranslate446_eq
end InitE.FrontendStages.Declarations
