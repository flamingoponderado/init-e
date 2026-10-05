import InitE.FrontendStages.Globals.Output859
import InitE.FrontendStages.Declarations.Data859
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate842
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate859_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified859) =
        some globalOutput859 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal859 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified859) := by trivial
theorem globalException859_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified859) = none := by rfl
#print axioms globalTranslate859_eq
end InitE.FrontendStages.Declarations
