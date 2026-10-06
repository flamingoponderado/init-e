import InitE.FrontendStages.Globals.Output463
import InitE.FrontendStages.Declarations.Data463
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate447
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate463_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified463) =
        some globalOutput463 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal463 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified463) := by trivial
theorem globalException463_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified463) = none := by rfl
#print axioms globalTranslate463_eq
end InitE.FrontendStages.Declarations
