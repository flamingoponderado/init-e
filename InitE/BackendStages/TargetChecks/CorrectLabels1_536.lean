import InitE.BackendStages.TargetChecks.CorrectLabels0_536
import InitE.BackendStages.TargetChecks.CorrectEncode0_536
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_536
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_536_eq : LabToTarget.sectionLabels 379768 Reencode0_536.lines [] = (382620, localLabels1_536) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 379768 382620 riscvConfig.encode
    Initial536.lines Reencode0_536.lines [] Reencode0_536_eq).trans
    (localLabels0_536_eq.trans (by kernel_rfl))
#print axioms localLabels1_536_eq
end InitE.BackendStages.TargetChecks.Correct
