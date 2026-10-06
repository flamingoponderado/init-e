import InitE.FrontendStages.Globals.Output229
import InitE.FrontendStages.Declarations.Data229
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate211
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate229_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified229) =
        some globalOutput229 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal229 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified229) := by trivial
theorem globalException229_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified229) = none := by rfl
#print axioms globalTranslate229_eq
end InitE.FrontendStages.Declarations
