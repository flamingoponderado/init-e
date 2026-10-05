import InitE.FrontendStages.Globals.Output45
import InitE.FrontendStages.Declarations.Data45
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate28
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate45_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified45) =
        some globalOutput45 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal45 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified45) := by trivial
theorem globalException45_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified45) = none := by rfl
#print axioms globalTranslate45_eq
end InitE.FrontendStages.Declarations
