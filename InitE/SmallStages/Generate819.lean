import Tools.GenSmallStages
import InitE.SmallStages.Oracles819
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 819 InitE.WordStages.source819.2.1 InitE.WordStages.source819.2.2 InitE.SmallStages.Oracles819.oracle819
