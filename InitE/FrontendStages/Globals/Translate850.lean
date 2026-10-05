import InitE.FrontendStages.Globals.Output850
import InitE.FrontendStages.Declarations.Data850
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate833
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate850_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified850) =
        some globalOutput850 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal850 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified850) := by trivial
theorem globalException850_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified850) = none := by rfl
#print axioms globalTranslate850_eq
end InitE.FrontendStages.Declarations
