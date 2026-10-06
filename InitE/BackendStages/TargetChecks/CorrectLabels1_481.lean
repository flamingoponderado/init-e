import InitE.BackendStages.TargetChecks.CorrectLabels0_481
import InitE.BackendStages.TargetChecks.CorrectEncode0_481
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_481
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_481_eq : LabToTarget.sectionLabels 339620 Reencode0_481.lines [] = (340104, localLabels1_481) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 339620 340104 riscvConfig.encode
    Initial481.lines Reencode0_481.lines [] Reencode0_481_eq).trans
    (localLabels0_481_eq.trans (by kernel_rfl))
#print axioms localLabels1_481_eq
end InitE.BackendStages.TargetChecks.Correct
