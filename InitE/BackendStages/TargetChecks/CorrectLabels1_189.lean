import InitE.BackendStages.TargetChecks.CorrectLabels0_189
import InitE.BackendStages.TargetChecks.CorrectEncode0_189
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_189
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_189_eq : LabToTarget.sectionLabels 62268 Reencode0_189.lines [] = (63880, localLabels1_189) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 62268 63880 riscvConfig.encode
    Initial189.lines Reencode0_189.lines [] Reencode0_189_eq).trans
    (localLabels0_189_eq.trans (by kernel_rfl))
#print axioms localLabels1_189_eq
end InitE.BackendStages.TargetChecks.Correct
