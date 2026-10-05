import InitE.BackendStages.BytePiecesData231
import InitE.BackendStages.BytePiecesData232
import InitE.BackendStages.BytePiecesData233
import InitECandidate.Bytes021
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate021_eq : InitECandidate.bytes021 = [piece231_2, piece232_0, piece233_0].flatten := by
  rw [piece231_2_eq, piece232_0_eq, piece233_0_eq]
  rfl
#print axioms candidate021_eq
end InitE.BackendStages.BytePieces
