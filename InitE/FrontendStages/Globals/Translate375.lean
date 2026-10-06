import InitE.FrontendStages.Globals.Output375
import InitE.FrontendStages.Declarations.Data375
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate359
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate375_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified375) =
        some globalOutput375 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal375 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified375) := by trivial
theorem globalException375_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified375) = none := by rfl
#print axioms globalTranslate375_eq
end InitE.FrontendStages.Declarations
