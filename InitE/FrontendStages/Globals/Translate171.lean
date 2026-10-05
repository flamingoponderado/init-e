import InitE.FrontendStages.Globals.Output171
import InitE.FrontendStages.Declarations.Data171
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate155
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate171_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified171) =
        some globalOutput171 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal171 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified171) := by trivial
theorem globalException171_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified171) = none := by rfl
#print axioms globalTranslate171_eq
end InitE.FrontendStages.Declarations
