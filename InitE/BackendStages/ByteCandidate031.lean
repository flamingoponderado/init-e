import InitE.BackendStages.BytePiecesData250
import InitE.BackendStages.BytePiecesData251
import InitE.BackendStages.BytePiecesData252
import InitE.BackendStages.BytePiecesData253
import InitE.BackendStages.BytePiecesData254
import InitE.BackendStages.BytePiecesData255
import InitECandidate.Bytes031
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate031_eq : InitECandidate.bytes031 = [piece250_1, piece251_0, piece252_0, piece253_0, piece254_0, piece255_0].flatten := by
  rw [piece250_1_eq, piece251_0_eq, piece252_0_eq, piece253_0_eq, piece254_0_eq, piece255_0_eq]
  rfl
#print axioms candidate031_eq
end InitE.BackendStages.BytePieces
