import InitE.BackendStages.TargetChecks.CorrectLabels0_594
import InitE.BackendStages.TargetChecks.CorrectEncode0_594
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_594
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_594_eq : LabToTarget.sectionLabels 440692 Reencode0_594.lines [] = (441264, localLabels1_594) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 440692 441264 riscvConfig.encode
    Initial594.lines Reencode0_594.lines [] Reencode0_594_eq).trans
    (localLabels0_594_eq.trans (by kernel_rfl))
#print axioms localLabels1_594_eq
end InitE.BackendStages.TargetChecks.Correct
