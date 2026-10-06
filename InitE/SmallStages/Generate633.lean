import Tools.GenSmallStages
import InitE.SmallStages.Oracles633
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 633 InitE.WordStages.source633.2.1 InitE.WordStages.source633.2.2 InitE.SmallStages.Oracles633.oracle633
