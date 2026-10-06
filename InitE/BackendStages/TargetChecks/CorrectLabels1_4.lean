import InitE.BackendStages.TargetChecks.CorrectLabels0_4
import InitE.BackendStages.TargetChecks.CorrectEncode0_4
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_4
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_4_eq : LabToTarget.sectionLabels 812 Reencode0_4.lines [] = (864, localLabels1_4) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 812 864 riscvConfig.encode
    Initial4.lines Reencode0_4.lines [] Reencode0_4_eq).trans
    (localLabels0_4_eq.trans (by kernel_rfl))
#print axioms localLabels1_4_eq
end InitE.BackendStages.TargetChecks.Correct
