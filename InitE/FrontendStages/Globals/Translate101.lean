import InitE.FrontendStages.Globals.Output101
import InitE.FrontendStages.Declarations.Data101
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate80
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate101_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified101) =
        some globalOutput101 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal101 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified101) := by trivial
theorem globalException101_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified101) = none := by rfl
#print axioms globalTranslate101_eq
end InitE.FrontendStages.Declarations
